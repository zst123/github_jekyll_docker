if [ -z "$1" ]; then
    echo "Please pass in folder name as argument"
    exit 1
fi

docker exec -it "github_pages" bash -l -c \
"echo 'Launching: /app/$1' &&\
echo \"GEM_HOME: \$GEM_HOME\" &&\
gem install jekyll bundler bundler:1.17.1 &&\
cd /app/$1 &&\ 
bundle install &&\
bundle exec jekyll serve"
