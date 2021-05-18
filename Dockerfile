# use this empty Dockerfile to build your assignment

# This dir contains a Node.js app, you need to get it running in a container
# No modifications to the app should be necessary, only edit this Dockerfile

# Overview of this assignment
# use the instructions from developer below to create a working Dockerfile
# feel free to add command inline below or use a new file, up to you (but must be named Dockerfile)
# once Dockerfile builds correctly, start container locally to make sure it works on http://localhost
# then ensure image is named properly for your Docker Hub account with a new repo name
# push to Docker Hub, then go to https://hub.docker.com and verify
# then remove local image from cache
# then start a new container from your Hub image, and watch how it auto downloads and runs
# test again that it works at http://localhost


# Instructions from the app developer // Làm theo chỉ dẫn này nhé 
# - you should use the 'node' official image  // Sử dụng image node phiên bản tùy chọn tốt nhât từ bản 10. Lên docker hub để tìm
# - this app listens on port 3000, but the container should launch on port 80 // nhớ expose port 3000 ra
#  so it will respond to http://localhost:80 on your computer
# - then it should use alpine package manager to install tini: 'apk add --update tini'
# - then it should create directory /usr/src/app for app files with 'mkdir -p /usr/src/app' // Code sẽ được copy vào thư mục này
# - Node uses a "package manager", so it needs to copy in package.json file  // Copy package.json
# - then it needs to run 'npm install' to install dependencies from that file // Cài gói thông qua npm 
# - to keep it clean and small, run 'npm cache clean --force' after above // Sau khi cài xong npm để giảm thiểu dung lượng, nên chạy lệnh 'npm cache clean --force'
# - then it needs to copy in all files from current directory // Copy tất cả các file vào directory đang làm việc hiện tại
# - then it needs to start container with command 'node ./bin/www' // Container cần phải được start với command này
# - in the end you should be using FROM, RUN, WORKDIR, COPY, EXPOSE, and CMD commands // Kết thúc Dockerfile phải có đầy đủ các lệnh trên

# Bonus Extra Credit
# this will not have you setting up a complete image useful for local development, test, and prod
# it's just meant to get you started with basic Dockerfile concepts and not focus too much on
# proper Node.js use in a container. **If you happen to be a Node.js Developer**, then 
# after you get through more of this course, you should come back and use my 
# Node Docker Good Defaults sample project on GitHub to change this Dockerfile for 
# better local development with more advanced topics
# https://github.com/BretFisher/node-docker-good-defaults
