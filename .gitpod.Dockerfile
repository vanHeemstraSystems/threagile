FROM gitpod/workspace-full AS build

FROM threagile/threagile
COPY --from=build . .
