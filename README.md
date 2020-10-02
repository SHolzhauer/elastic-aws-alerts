# Elastic AWS Alerts
The Elastic Stack security app provides a way to view "alerts" from external
tools by ingesting events with the field `event.kind:alert`.

This repository contains code, logstash pipelines and elasticsearch mappings
to ingest the following AWS service their alerts as external alerts.

## What is where

| dir | contains |
|---|---|
| logstash | input and filters for Logstash pipeline |
| elasticsearch | Index templates to setup mapping |
