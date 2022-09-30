# Smarty admin theme

The admin theme for smarty engine

## Compatibility

* b-7.0.x branch is compatible with OXID eShop b-7.0.x

## Installation

**Run the following command to install theme:**

```bash
composer require oxid-esales/smarty-admin-theme
```

**Note:**

The smarty theme for admin will be registered during the installation. If you are having some issues, that the wrong Admin
theme is loaded, please check if the `oxid_esales.theme.admin.name` parameter is set correctly:

.. code:: yaml

    parameters:
      oxid_esales.theme.admin.name: 'admin_smarty'


## License

See LICENSE file for license details.

## Bugs and Issues

If you experience any bugs or issues, please report them in the section **OXID eShop (all versions)** under category **Smarty engine** of https://bugs.oxid-esales.com
