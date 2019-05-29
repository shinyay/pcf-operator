#!/bin/bash

gcloud services enable compute.googleapis.com && \
gcloud services enable iam.googleapis.com && \
gcloud services enable cloudresourcemanager.googleapis.com && \
gcloud services enable dns.googleapis.com && \
gcloud services enable sqladmin.googleapis.com
