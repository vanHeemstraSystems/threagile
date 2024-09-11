# 300 - Create a Threagile Example Model (Optional)

Inside the threagile help we saw that aside from a stub model we can also create a not a minimal stub model but a filled ```example model```:

```
If you want to create an example model (via docker) as a starting point to learn about Threagile just run: 
 docker run --rm -it -v "$(pwd)":/app/work threagile/threagile -create-example-model -output /app/work
```

That's something we're going to use now.

Run the following command (using the script file):

```
$ ./threagile.sh  -create-example-model -output /app/work
```

An example model was created and that's a little bit more filled so
6:02
if you take a look at that in the ide we see some data assets in it and we see some some more
6:10
data assets here and we see some more um technical asset we have a navigation in the ide here that's
6:16
pretty pretty nice so we can just go to the apache web server and we see the rating and the data that's being
6:23
processed and stuff like that and we have some trust boundaries here as well so
6:28
we can see it's a little more of a filled model and we can just use this kind of model to
6:34
create some nice results by executing threshold on that
6:39
so it's basically fragile and then just i'm giving it the model
6:46
argument and that's inside the container app work fragile
6:53
example model dot yaml and output is app
7:01
work and i make it for both that way it works on my local file on
7:08
the local file system in the folder here and it generates a few things so how does the
7:13
docker container do that it's simply by the mapping of the volume so that inside the docker
7:19
container of fragile app work is the folder which is actually the current folder here so that way we can interact that way
7:26
nice and in the next few minutes i'm going to go deeper into what kind of risk output was generated

MORE
