#!/bin/bash
docker run --rm -it -v "$(pwd)":/app/work threagile/threagile "$@"