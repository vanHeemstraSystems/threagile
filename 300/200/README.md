# 200 - Create a Threagile Stub Model (Optional)

Run the following command to create a Threagile Stub Model:

```
$ docker run --rm -it -v "$(pwd)":/app/work threagile/threagile -create-stub-model -output /app/work
```

Or use the script ```threagile.sh```:

```
$ ./threagile.sh -create-stub-model -output /app/work
```

**NOTE**: If you get a notification ```Permission Denied```, set the file access permission to executable with ```$ chmod +x threagile.sh```.