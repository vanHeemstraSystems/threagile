#!/bin/bash
chmod a+rwx -R "$(pwd)"
docker run --rm -it -v "$(pwd)":/app/work threagile/threagile "$@"