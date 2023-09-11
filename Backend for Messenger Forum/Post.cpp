# include <iostream>
# include <string>
# include <stdexcept>
# include <sstream>
# include "Post.h"

using std::string, std::vector;

Post::Post(unsigned int postId, string userName, string postText) : postId(postId), userName(userName), postText(postText) {
    if (postId == 0 || userName == "" || postText == "") {
        throw std::invalid_argument("post constructor: invalid parameter values");
    }
}

unsigned int Post::getPostId() {
    return postId;
}

string Post::getPostUser() {
    return userName;
}

string Post::getPostText() {
    return postText;
}

vector<string> Post::findTags() {
    // make stringstream from postText string
    std::stringstream postStream(postText);

    // Initialize vector and character
    vector<string> tags;
    char character;

    // while loop through characters in stringStream
    while(!postStream.eof()) {
        postStream.get(character);

        // check for #
        if (character == char('#')) {
            std::string tag = "#";

            postStream.get(character);
            // if we get a #, create a new string = '#'. loop through and append characters until character.isAlpha() == False or we reach the end of our stream
            while(!(character == char(' ') || character == char('!') || character == char('?') || character == char(',') || character == char('.'))
                 && !postStream.eof()) 
                    {
                tag += tolower(character);
                postStream.get(character);
            }

            // add tag to tags vector
            tags.push_back(tag);
        }
    }
    
    // return tags
    return tags;
}