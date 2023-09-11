# include <string>
# include <stdexcept>
# include "User.h"

using std::string, std::vector;

User::User(string userName):userName(userName), userPosts({}){
    // exceptions:
    // If its empty
    if(userName == ""){
        throw std::invalid_argument("");
    }

    // if it doesnt start with a letter
    if(!isalpha(userName[0])){
        throw std::invalid_argument("");
    }

    // if it includes an upper case letter
    for(unsigned long i = 0; i < userName.length(); i++){
        if(isupper(userName[i])){
            throw std::invalid_argument("");
        }
    }
}

string User::getUserName() {
    // return username
    return this->userName;
}

vector<Post*>& User::getUserPosts() {
    // return userposts
    return this->userPosts;
}

void User::addUserPost(Post* post) {
    // check first is post is nullptr. throw exception if yes, add post if else
    if(post == nullptr){
        throw std::invalid_argument("");
    }
    else{
        this->userPosts.push_back(post);
    }
}
