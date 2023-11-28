# Custom Resource Manager

**Custom Resource Manager** (CRM) is an application to manage several types of Kubernetes resources:

- Custom resources
- Services
- Deployments
- Volumes
- Jobs

It consists in a back-end, written in *Java*, which connects to the Kubernetes API to perform actions on resources, and a front-end, written in *React* and based on [React-admin](https://marmelab.com/react-admin/).

Instructions on how to install and start an instance can be found on the [repository](https://github.com/scc-digitalhub/custom-resource-manager).

## Services, Deployments

You can list services or deployments by clicking the corresponding button in the left menu, and view the details of one item by clicking its *Show* button. 

## Custom resources

Kubernetes custom resources can be viewed, created, edited and deleted through the use of the interface. However, each kind requires its schema to be defined first, so that the application may understand and describe the related resources.

Access the **Settings** section from the left menu. You will likely see an empty list, so click *Create*.

The **CRD** drop-down menu will list all *Custom Resource Definitions* available on the Kubernetes instance; when you pick one, the **Version** field will automatically be filled with the version of the currently active schema.

Providing the **Schema** may seem daunting, but you can simply leave it empty and click *Save*, and it will automatically be built from the currently active schema.

!!! warning "Automatic schema specification"

    When the schema is built automatically, you will need to *Edit* it afterwards, to add the `"$schema":"https://json-schema.org/draft/2020-12/schema"` property at root level, like this:

    ``` json
    {"$schema":"https://json-schema.org/draft/2020-12/schema",...}
    ```

    This property is required by the *OpenAPI* specification, yet is missing from the properties present in Kubernetes. Until a solution to make it compliant is implemented, it will have to be manually added after automatic creation.

Once the schema has been created, custom resources of the corresponding kind can be viewed, created, edited and deleted through the interface. Their fields will depend on the specification of this schema. If some resources already exist, they will be immediately be visible.

The pages for creating, listing, inspecting and editing a custom resource [may be customized](/digitalhub/tasks/rm-custom-views).