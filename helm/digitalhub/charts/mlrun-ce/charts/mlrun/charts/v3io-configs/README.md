# V3IO Configuration Chart

Provide helpful template for definging v3io specific configuration files
**This chart should not be used as stangalone! Only as requirement for other charts**

## Configuration

### Mandatory Values

  * `v3io.username`
  * `v3io.tenant`
  * `v3io.password`

### Optional Configuration

|       Key                        |                   default         |
|----------------------------------|-----------------------------------|

### Optional Global Configuration

Configurable values are using `default` direcrive and stored in `global`, due to the chart render mechanism. 

|       Key                               |      default                      |
|-----------------------------------------|-----------------------------------|
| `global.v3io.configPath`                | `"/igz/java/conf"`                |
| `global.v3io.configMountPath`           | `"/etc/config/v3io"`              |
| `global.v3io.configFileName`            | `"v3io.conf"`                     |
| `global.v3io.authPath`                  | `"/igz/java/auth"`                |
| `global.v3io.authFileName`              | `".java"`                         |
| `global.v3io.lookupService.name`        | `"{{ .Release.Name }}-locator"`   |
| `global.v3io.lookupService.servicePort` | 8080                              |
| `global.v3io.lookupService.path`        | `"locate/v3iod"`                  |

## Defined Template

  * `v3io-configs.java.configMap` - render `ConfigMap` entries with `v3io.conf`
  * `v3io-configs.java.secret` - render `Secret` with java-client configuration
  * `v3io-configs.script.lookupService` - render script snippet for finding local v3iod and update `$IGZ_DATA_CONFIG_FILE`