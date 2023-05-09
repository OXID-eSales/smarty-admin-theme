# Smarty Admin theme

Admin theme based on the Smarty engine.

## Compatibility

* b-7.0.x branch is compatible with OXID eShop b-7.0.x

## Installation

**Run the following command to install Smarty Admin theme:**

```bash
composer require oxid-esales/smarty-admin-theme
```

**Install OXID eSales Smarty Component:**

Please install the corresponding version of the Smarty component:
```bash
composer require oxid-esales/smarty-component #for OXID eShop Community Edition
composer require oxid-esales/smarty-component-pe # for OXID eShop Professional Edition
composer require oxid-esales/smarty-component-ee # for OXID eShop Enterprise Edition
```

**Note:**

The Smarty theme for Admin will be registered during the installation.
Please check the following parameter's value in case the wrong Admin theme is loaded:

```yaml
parameters:
  oxid_esales.theme.admin.name: 'admin_smarty'
```

## License

See LICENSE file for license details.

## Bugs and Issues

If you experience any bugs or issues, please report them in the section **OXID eShop (all versions)** under category **Smarty engine** of https://bugs.oxid-esales.com
