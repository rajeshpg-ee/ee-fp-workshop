Setup
-----

Have docker installed on your machine and then run the following to start the jupyter notebook
```shell
docker compose up
```

If you're running the notebook for the first time, you'll have to install all the necessary pacakges
1. Open the notebook named "Pre install steps.ipynb"
2. Run all the cells in the notebook
3. Open the notebook "Test Notebook.ipynb"
4. Restart the kernel by clicking the restart icon so that the new packages are loaded
5. Try running the cells to see if everything is running correctly

If you happen to modify the Dockerfile, you can rebuild the image by running
```shell
docker compose up --build
```
