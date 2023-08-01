# Workspaces

Workspaces in Coder contain dependencies and configuration required for applications to run.

We've already seen [how to create a workspace from a template](/components/deploying-components) and how to access its applications once it's running, so let's take a look at how to access the workspace in a terminal.

The easiest and fastest way is to simply click on the *Terminal* button above the logs, which will open a terminal in your browser that allows you to browse the workspace's environment.

If you click on *VS Code Desktop*, it will open a connection to the workspace in your local instance of *VSCode* and you can open a terminal by clicking *Terminal* > *New Terminal*.

## Access the workspace in a local terminal

You can also connect your local terminal to the workspace via SSH. If you click on *SSH*, it will show some commands you need to run, but first you have to install the `coder` CLI and log into your Coder instance.

Install `coder` CLI:
``` shell
brew install cdr/coder/coder-cli
```

Log in:
``` shell
coder login https://coder.my-digitalhub-instance.it
```
A tab will open in your browser, ask you to log-in if you haven't already, then display a token that you're supposed to copy and paste in the terminal.

Now you can run the two commands you saw when you clicked on *SSH*. Configure SSH hosts (confirm with `yes` when asked):
``` shell
coder config-ssh
```
Note that, if you create new workspaces after running this command, you will need to re-run it to connect to them.

The sample command below displays how to connect to the Jupyter workspace and will differ depending on the workspace you want to connect to. Take the actual command from what you see when you click *SSH* on Coder.
``` shell
ssh coder.jupyter.jupyter
```

Your terminal should now be connected to the workspace. When you want to terminate the connection, simply type `exit`. To log coder out, type `coder logout`.

## Port-forwarding

You can start a SSH port-forwarding session from your terminal. First, log in:
``` shell
coder login https://coder.my-digitalhub-instance.it
```

The format for the SSH port-forwarding command is:
``` shell
ssh -L [localport]:localhost:[remoteport] coder.[workspace]
```

For example, it may be:
``` shell
ssh -L 3000:localhost:3000 coder.jupyter.jupyter
```

You will now be able to access the service in your browser, at `localhost:3000`.

## Resources

- [Official documentation](https://coder.com/docs/v1/latest/workspaces) on Coder workspaces