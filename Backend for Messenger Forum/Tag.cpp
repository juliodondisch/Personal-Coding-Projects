# include <string>
# include <stdexcept>
# include "Tag.h"

using std::string, std::vector;

Tag::Tag(string tagName):tagName(tagName),tagPosts({}){
    // Exceptions:
    //length is less than 2
    if(tagName.length() < 2){
        throw std::invalid_argument("");
    }
    
    // first char isn't #
    if(tagName[0] != '#'){
        throw std::invalid_argument("");
    }

    //second char is not a letter
    if(!isalpha(tagName[1])){
        throw std::invalid_argument("");
    }

    // contains upper case letters
    for(unsigned long i = 0; i < tagName.length(); i++){
        if(isupper(tagName[i])){
            throw std::invalid_argument("");
        }
    }

    // theres a '!', ',', '.' or '?' at the end
    char lastChar = tagName[tagName.length() - 1];
    if(lastChar == '!' || lastChar == ',' || lastChar == '.' || lastChar == '?'){
        throw std::invalid_argument("");
    }
}

string Tag::getTagName() {
    // return tag name
    return this->tagName;
}

vector<Post*>& Tag::getTagPosts() {
    // return tag posts
    return this->tagPosts;
}

void Tag::addTagPost(Post* post) {
    // check if post is nullptr, if it is throw an exception and if not then add post
    if(post == nullptr){
        throw std::invalid_argument("");
    }
    else{
        this->tagPosts.push_back(post);
    }
}
