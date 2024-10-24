# 500 - VS Code tips — JSON schemas for IntelliSense

Based on [VS Code tips — JSON schemas for IntelliSense](https://www.youtube.com/watch?v=m30JiCuW42U)

Based on [VSCode's New YAML Support is AWESOME]()

We will use the ```/threagile/schema.json``` file to allow for IntelliSense in Visual Studio Code when editing the threagile yaml files.

Go into the **Settings** of Visual Studio Code by choosing **View** from the hamburger menu in the top left corner of the editor and click **Command Palette** and look for: ```> Preferences: Open Settings (ui)``` followed by ENTER.

In ```Search Settings``` type ```yaml```. Find **Yaml: Schemas** - Associate schemas to yaml files. Click **Edit in settings.json**.

An editor opens where you can add schemas:

```
...
    "yaml.schemas": {
        
    }
...    
```

In our case we want ```./threagile/schema.json``` to be used.

So this is what you end up with:

```
...
    "yaml.schemas": {
        "./threagile/schema.json":["./threagile.yaml"]
    }
...    
```

Now if you edit a ```threagile.yaml``` file in the root directory of your repository, IntelliSense will assist you.

You know the schema applies, as in the top of the editor where you have ```threagile.yaml``` file opened, it states ```Threagile - Agile Threat Modeling (schema.json)```.

Try to type for example in ```threagile.yaml``` file:

```
threagile_version
```

And it will auto-complete, helping you to add a version.

```
threagile_version: 1.0.0
```

Moreover, a red line indicates that required entries are missing. If you hover over the red line, a modal window will even show you which mandatory entries are missing.

In addition, if you hover over an entry (aka a *node*), you get more description about it.

Try adding to ```threagile.yaml``` file:

```
title:
```

When hovering over the entry ```title``` it says "Title of the model" and the reference to ```schema.json``` where it is getting this information from.

