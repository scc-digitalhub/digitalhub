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

## Create

A new project is created with [new_project](https://docs.mlrun.org/en/latest/api/mlrun.projects.html#mlrun.projects.new_project): the only required fields are `name` (`my-project`) and `context` (`./`), which is where project files will be stored; `user_project` indicates the project's name should be unique per user, while `init_git` initializes git in the context directory.
``` python
project = mlrun.new_project("my-project", "./", user_project=True, 
                            init_git=True, description="my new project")
```

You can check in the interface that the project has been created: go to Coder, access the *dashboard* and, from the *Components* section, open the *MLRun Dashboard*.

## Load

You can load a project with [load_project](https://docs.mlrun.org/en/latest/api/mlrun.projects.html#mlrun.projects.load_project), by indicating its `context`:
``` python
project = mlrun.load_project("./")
```

Or clone it from a repository:
``` python
project = load_project(name="my-project",
                       url="git://github.com/mlrun/project-archive.git")
```

With [get_or_create_project](https://docs.mlrun.org/en/latest/api/mlrun.projects.html#mlrun.projects.get_or_create_project) you can create a project or, if it already exists, load it into the `project` variable:
``` python
project = mlrun.get_or_create_project("my-project", "./")
```

## Delete

TODO - documentation mentions `mlrun.db.delete_project`, but this method seems to be missing: `AttributeError: module 'mlrun.db' has no attribute 'delete_project'`

## Resources

- [Official documentation](https://docs.mlrun.org/en/latest/projects/project.html) on MLRun projects