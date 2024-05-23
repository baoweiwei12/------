
# 项目初始化和运行指南

## 环境准备

### Python 版本
确保您的系统上已安装 Python 版本 3.11.9。

### 创建虚拟环境并安装依赖

1. 创建虚拟环境：
    ```bash
    python -m venv venv
    ```

2. 激活虚拟环境：
    - 对于 Unix 或 MacOS：
        ```bash
        source venv/bin/activate
        ```
    - 对于 Windows：
        ```bash
        .\venv\Scripts\activate
        ```

3. 安装所需依赖：
    ```bash
    pip install -r requirements.txt
    ```

## 初始化数据库

确保执行 `initdatabase.sql` 文件以初始化数据库。执行方法取决于您所使用的数据库管理系统（例如 MySQL、PostgreSQL 等）。以下是一个 MySQL 的示例：

```bash
mysql -u 用户名 -p 数据库名称 < initdatabase.sql
```

## 修改配置文件

1. 创建 `config.yaml` 文件。
2. 修改配置文件，包括数据库连接信息、密钥等。

## 运行开发环境

在开发环境中运行项目：

```bash
python dev.py
```

## 运行生产环境

在生产环境中运行项目：

```bash
python start.py
```
## 访问api文档

访问 `http://localhost:5050/docs` 或 `http://localhost:5050/redoc` 查看api文档。

## 访问首页

访问 `http://localhost:5050/homePage` 查看首页。

## 注意

请确保在运行生产环境之前，所有配置已正确设置。
