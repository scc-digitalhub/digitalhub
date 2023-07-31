# Projects

A project in MLRun is a container for everything (code, assets, configuration, ...) that concerns an application.

Often, they have a structure like this:
```
my-project           # Parent directory of the project (context)
├── data             # Data for local tests
├── docs             # Documentation
├── src              # Source code (functions, libs, workflows)
├── tests            # Unit tests (pytest) for functions
├── project.yaml     # MLRun project spec file
├── README.md        # README file
└── requirements.txt # Default Python requirements file
```

Projects may be created and managed from the UI, but also by using MLRun's API. Here we look briefly at how to do it from a Jupyter Python notebook. Access your Jupyter instance and create a new notebook.

Import the `mlrun` library:
``` python
import mlrun
```

## Create a project

A new project is easily created as follows. The only required fields are `name` (`my-project`) and `context` (`./`), which is where project files will be stored; `user_project` indicates the project's name should be unique per user, while `init_git` initializes git in the context directory.
``` python
project = mlrun.new_project("my-project", "./", user_project=True, 
                            init_git=True, description="my new project")
```

## Load a project

You can load a project by indicating its `context`:
``` python
project = mlrun.load_project("./")
```

Or clone it from a repository:
``` python
project = load_project(name="my-project",
                       url="git://github.com/mlrun/project-archive.git")
```

The following will create a project or, if it already exists, load it into the `project` variable:
``` python
project = mlrun.get_or_create_project("my-project", "./")
```

Deeper information on MLRun projects can be found in the [official documentation](https://docs.mlrun.org/en/stable/projects/project.html).