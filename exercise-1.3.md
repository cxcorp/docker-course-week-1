Command ran:

1. Start the container `curler`, use `-it` to connect it to `stdin` and allocate a pseudo-TTY
    ```
    docker run -d -it --name curler ubuntu:16.04 sh -c 'read website; sleep 3; curl http://$website;'
    ```
2. Start a bash session in the container to install curl
    ```
    docker exec -it curler bash
    ```
3. Install curl inside the container and exit
    ```
    apt-get update && apt-get install -y curl && exit
    ```
4. Attach to the container to input the website
    ```
    docker attach curler
    ```
5. Input the website
    ```
    helsinki.fi
    <!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
    <html><head>
    <title>301 Moved Permanently</title>
    </head><body>
    <h1>Moved Permanently</h1>
    <p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
    </body></html>
    ```
