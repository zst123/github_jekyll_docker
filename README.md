# github_jekyll_docker

Docker container to locally host Jekyll GitHub Pages

### To Install

    ./build.sh

### Usage

To start up container

    ./start.sh

Clone your github page repo into the current directory and launch it.

    git clone <your_github_repo>
    ./launch.sh <folder_name>

> Note that Ruby dependencies will be downloaded into the `gems` folder.

To stop the container

    ./stop.sh

### To Uninstall

    ./unbuild.sh
