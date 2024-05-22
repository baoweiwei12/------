import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(levelname)s:   %(asctime)s   %(message)s",
    handlers=[
        logging.StreamHandler(),
        logging.FileHandler("log.txt", encoding="utf-8"),
    ],
)

# 使用logger实例
logger = logging.getLogger()