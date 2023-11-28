# CRM - Custom views

 In [Custom Resource Manager](/digitalhub/components/resourcemanager), it is possible to customize the pages for creating, listing, inspecting and editing custom resources of a specific kind. As it involves writing React code, and using the [React-admin](https://marmelab.com/react-admin/documentation.html) library, familiarity with these technologies may be required, depending on the desired level of customization.

## Create a custom view

 Create a new file, under `frontend/src/resources`, containing the name of the *custom resource definition* (*CRD*), in the format `cr.<CRD>.ts`. For example, if the CRD is `myresource.example.com`, the filename will be `cr.myresource.example.com.tsx`.

You are encouraged to use other files within the path as reference on how to write this file. You are expected to define 4 functions, one for each of these actions: *Create*, *List*, *Show*, *Edit*. Each would have this structure:
``` javascript
const CrCreate = () => { // example for Create
    ...
    return (
        <>
            ...
        </>
    );
};
```

The body of the function will perform any kind of computation that your page may need, while the return segment will contain the form or datagrid to display.

Then, register these functions within a view and export it:

``` javascript
const CustomView: View = {
    key: 'myresource.example.com',
    name: 'My Resource',
    list: CrList,
    show: CrShow,
    create: CrCreate,
    edit: CrEdit,
};

export default CustomView;
```

## Register the custom view

Once the custom view file is ready, you simply need to register it. Open `frontend/src/App.tsx` and import the view:

``` javascript
import crExample from './resources/cr.myresource.example.com';
```

Then, register it by adding a line to the `customView` structure:

``` javascript
const customViews: { [index: string]: View } = {
    'myresource.example.com': crExample,
    ...
};
```