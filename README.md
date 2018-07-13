# swVolunteer


### 개발환경 설정하기
```

   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
   brew install rbenv ruby-build
   echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
   source ~/.bash_profile
   rbenv install 2.5.1
   rbenv global 2.5.1
   ruby -v
   gem install rails -v 5.2.0
   rbenv rehash
   rails -v
   brew install sqlite3
```
