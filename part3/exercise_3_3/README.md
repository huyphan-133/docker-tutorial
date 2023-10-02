# Builder
- Download repo from git
- Build image
- Push image to docker registry

# Run
## using command: 
```
./builder.sh https://github.com/huyphan-133/express-app icbombomci/coursepage2
```

## using docker: 
```
docker build . -t builder
docker run -v /var/run/docker.sock:/var/run/docker.sock -it builder huyphan-133/express-app icbombomci/coursepage2
```
