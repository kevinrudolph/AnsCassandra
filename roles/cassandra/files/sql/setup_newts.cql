CREATE TABLE samples (
    partition     int,
    resource      text,
    collected_at  timestamp,
    metric_name   text,
    value         blob,
    attributes    map<text, text>,
    PRIMARY KEY((partition1, resource1), collected_at, metric_name)
);