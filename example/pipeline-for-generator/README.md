# Gitlab Project && Pipeline for generate projects from git project template

- La variable de muestra esta generada dentro de la config del proyecto
  en el apartado de /settings/ci_cd
  ![Alt text](https://github.com/juantimonescalona/gitlab-ci-cd/blob/master/example/pipeline-for-generator/variables-pipeline.PNG?raw=true "Variables necesarias") 

- Se ejecuta la pipeline manualmente y pasando los valores de los parametros
![Alt text](https://github.com/juantimonescalona/gitlab-ci-cd/blob/master/example/pipeline-for-generator/run-pipeline.PNG?raw=true "Variables de ejecucion") 

- Se bloquea el stage/job de la pipeline de la siguiente manera, usando la condicion
  when: manual

- Otra opción para que no salte la pipeline es agregar en el push: git push -o ci.skip (pero esto sería complicado de implementar)
https://docs.gitlab.com/ee/ci/yaml/#skipping-jobs
git push --push-option=ci.skip    # using git 2.10+
git push -o ci.skip               # using git 2.18+
