# kafka-cluster-dock
- [kafka 官网](https://kafka.apache.org/)
- [kafbat-ui 官网](https://ui.docs.kafbat.io/)

基于 Docker Compose 搭建的kafka集群服务环境

# IP地址

内部IP地址从 172.25.110.3 开始

# 服务清单

| status | service | backend ip | version | 备注 |
|---|---|---|---|---|
| &check; | kafka-controller1 | 172.25.110.3 | 4.1.0 | |
| &check; | kafka-controller2 | 172.25.110.4 | 4.1.0 | |
| &check; | kafka-controller3 | 172.25.110.5 | 4.1.0 | |
| &check; | kafka-broker1 | 172.25.110.6 | 4.1.0 | |
| &check; | kafka-broker2 | 172.25.110.7 | 4.1.0 | |
| &check; | kafka-broker3 | 172.25.110.8 | 4.1.0 | |
| &check; | kafbat-ui | 172.25.40.10 | latest | |

# 使用到的镜像

```json
[
    "apache/kafka-native:4.1.0",
    "ghcr.io/kafbat/kafka-ui:latest",
]
```
