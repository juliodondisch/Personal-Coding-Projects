# include <iostream>
# include <fstream>
# include <sstream>
# include <stdexcept>
# include "Network.h"

using std::string, std::vector, std::cout, std::endl, std::ifstream;

Network::Network() : users({}), posts({}), tags({}) {}

void Network::addUser(string userName) {
    // check if user doesn't already exist
    // if not then create a new user with username as argument, and add a pointer to object into this->users vector
    // first make all characters in userName into lowercase
    for(unsigned long i = 0; i < userName.length(); i++){
        if(isupper(userName[i])){
            userName[i] = tolower(userName[i]);
        }
    }
    
    // loop through all elements of this->users vector
    for(unsigned long i = 0; i < this->users.size(); i++){
        // throw exception if username already exists
        if(this->users[i]->getUserName() == userName){
            throw std::invalid_argument("");
        }
    }

    // create the user since its not a repeat name
    User* newUser = new User(userName);

    // check to see if our user class had no uncaught exceptions, add pointer to the user to the vector
    // throwing an exception in a constructor will lead user to be a nullptr
    if(newUser != nullptr){
        this->users.push_back(newUser);
        cout << "Added User " << userName << endl;
    }
}

void Network::addPost(unsigned int postId, string userName, string postText) {
    // exceptions
    // if postID already exists
    for(unsigned long i = 0; i < this->posts.size(); i++){
        if(this->posts[i]->getPostId() == postId){
            throw std::invalid_argument("");
        }
    }

    // if username doesnt exist
    bool userExists = false;
    for(unsigned long i = 0; i < this->users.size(); i++){
        if(this->users[i]->getUserName() == userName){
            userExists = true;
        }
    }
    if(!userExists){
        throw std::invalid_argument("");
    }

    // adding post to network:
        // create new post. If post throws exception it will be nullptr
    Post* newPost = new Post(postId, userName, postText);

        // if post is not a nullptr
    if(newPost != nullptr){
        // add post to this->posts vector
        this->posts.push_back(newPost);

                    // add post to userPosts vector of our user. need to find user first
                // loop through users, check if currUsername.getUsername() == userName. If yes, add post to currUser->userPosts vector
        for(unsigned long i = 0; i < this->users.size(); i++){
            if(this->users[i]->getUserName() == userName){
                this->users[i]->addUserPost(newPost);
            } 
        }
        // get the post tags with post->findTags(), make vector to store
        vector<string> postTags = newPost->findTags();
        // loop through tags vector
            // if tag is already inthis->tags, add post to currTag->tagPosts
            // if tag is not in this->tags, create new tag, add pointer to this->tags vector, and add post to that tag's tagPosts vector
        for(unsigned long i = 0; i < postTags.size(); i++){
            bool exists = false;
            // loop through tags vector. using getTagName(), compare to postTags[i]. If it exists, turn exists to true
            for(unsigned long j = 0; j < this->tags.size(); j++){
                if(this->tags[j]->getTagName() == postTags[i]){
                    // if it exists add post to currTag->tagPosts
                    exists = true;
                    this->tags[j]->addTagPost(newPost);
                    break;
                }
            }
            
            // if tag doesnt exist, do things mentioned above
            if(!exists){
                try{
                    Tag* newTag = new Tag(postTags[i]);
                    this->tags.push_back(newTag);
                    newTag->addTagPost(newPost);
                }
                catch(std::invalid_argument& text){
                    // just need to catch and then go onto the next tag
                }
           }
        }
        // if no exceptions output things
        cout << "Added Post " << postId << " by " << userName << endl;
    }
    else{
        throw std::invalid_argument("");
    }

}

void Network::loadFromFile(string fileName) {
    // create ifstream with fileName
    ifstream fileStream(fileName);
    
    // if !file.isOpen(), throw exception
    if(!fileStream.is_open()){
        throw std::invalid_argument("");
    }

    
    // loop through lines in file
    while(!fileStream.eof()){
        // declare line and get line from file
        string line;
        getline(fileStream, line);

        // put the line into a stringstream
        std::istringstream lineStream(line);

        // check if first word is "User" or "Post"
        lineStream >> line;

        // if User
        if(line=="User"){
            string userName;
            lineStream >> userName;
            // create a user with the userName
            try{
                this->addUser(userName);
            }
            catch(std::invalid_argument& argument){
                throw std::runtime_error("");
            }
        }

        // if Post
        else if(line=="Post"){
            // get postID and userName
            unsigned int postID;
            string postIDHolder;
            try{
                lineStream >> postIDHolder;
                postID = stoi(postIDHolder);
            }
            catch(std::invalid_argument& argument){
                throw std::runtime_error("");
            }
            string userName;
            lineStream >> userName;

            // get rest of the line
            string text = "";
            string word;
            // do one iteration without adding a space
            lineStream >> word;
            text += word;
            while(!lineStream.eof()){
                lineStream >> word;
                text += " " + word;
            }
            // create a post with username and id, and the rest of the line as text
            try{
                this->addPost(postID, userName, text);
            }
            catch(std::invalid_argument& argument){
                throw std::runtime_error("");
            }
        }

        // if not user nor post. If its an empty line just let it run, if not throw an exception
        else if(line!=""){
            throw std::runtime_error("");
        }
    }
}

vector<Post*> Network::getPostsByUser(string userName) {
    // TODO: return posts created by the given user
    // find current user
    for(unsigned long i = 0; i < this->users.size(); i++){
        if(this->users[i]->getUserName() == userName){
            // return currUser->userPosts
            return this->users[i]->getUserPosts();
        }
    }
    // throw exception if user doesnt exist and return empty vector
    throw std::invalid_argument("");
    return {};
}

vector<Post*> Network::getPostsWithTag(string tagName) {
    // TODO: return posts containing the given tag
    // find current tag
    for(unsigned long i = 0; i < this->tags.size(); i++){
        // if tag name is current tag
        if(this->tags[i]->getTagName() == tagName){
            // return tagPosts
            return this->tags[i]->getTagPosts();
        }
    }

    // throw exception if tag doesnt exist and return empty vector
    throw std::invalid_argument("");
    return {};
}

vector<string> Network::getMostPopularHashtag() {
    // TODO: return the tag occurring in most posts
    // make vector to store most popular hashtags
    vector<string> hashtags = {};

    // loop through tags vector. Each tag has a certain amount of posts, which is the size of their tagPosts vector. Find the maximum
    int max = 0;
    for(unsigned long i = 0; i < this->tags.size(); i++){
        // get occurances of current tag using getTagPosts and that vector's size
        int occurences = this->tags[i]->getTagPosts().size();

        // if greater, replace vector with current tag. if equal, push it back
        if(occurences > max){
            max = occurences;
            hashtags = {tags[i]->getTagName()};
        }
        else if(occurences == max){
            hashtags.push_back(tags[i]->getTagName());
        }
    }
    
    // return hashtags
    return hashtags;
}

Network::~Network() {
    for (unsigned int i = 0; i < users.size(); ++i) {
        delete users.at(i);
    }

    for (unsigned int i = 0; i < tags.size(); ++i) {
        delete tags.at(i);
    }
    
    for (unsigned int i = 0; i < posts.size(); ++i) {
        delete posts.at(i);
    }
}
