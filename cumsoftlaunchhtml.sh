#!/bin/bash
################################################################################
#                                                                              #
################################################################################
#                                                                              #
#                                                                              #
################################################################################
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################
#  ______  __    __  .___  ___.      _______.  ______    _______ .___________. #
# /      ||  |  |  | |   \/   |     /       | /  __  \  |   ____||           | #
#|  ,----'|  |  |  | |  \  /  |    |   (----`|  |  |  | |  |__   `---|  |----` #
#|  |     |  |  |  | |  |\/|  |     \   \    |  |  |  | |   __|      |  |      #
#|  `----.|  `--'  | |  |  |  | .----)   |   |  `--'  | |  |         |  |      #
# \______| \______/  |__|  |__| |_______/     \______/  |__|         |__|      #
#                                                                              #
#                                                                              #
#  Cumsoft Copyright (C) 2022.                                                 #
#  https://github.com/cumsoft                                                  #
#  https://cumsoft.wixsite.com/cumsoft                                         #
#  Https://cumsoft.gumroad.com                                                 #
################################################################################
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################
#                                                                              #
#                                                                              #
################################################################################
#                                                                              #
################################################################################

touch pyscript.html

cat > pyscript.html << EOF

<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://pyscript.net/alpha/pyscript.css" />
    <script defer src="https://pyscript.net/alpha/pyscript.js"></script>
    <py-env> 
        - pandas 
        - scikit-learn 
        - matplotlib 
        - numpy 
    </py-env>
  </head>

  <body>
    <div id="plot"></div>
    <py-script output="plot">
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
data={'Hours': [2.5, 5.1, 3.2, 8.5, 3.5, 1.5, 9.2, 5.5, 8.3, 2.7, 7.7, 5.9, 4.5, 3.3, 1.1, 8.9, 2.5, 1.9, 6.1, 7.4, 2.7, 4.8, 3.8, 6.9, 7.8], 'Scores': [21, 47, 27, 75, 30, 20, 88, 60, 81, 25, 85, 62, 41, 42, 17, 95, 30, 24, 67, 69, 30, 54, 35,76, 86]}
s=pd.DataFrame(data)
X=np.array(s['Hours']).reshape(-1,1)
Y=np.array(s['Scores']).reshape(-1,1)
X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.2, random_state=0)
regressor = LinearRegression()
regressor.fit(X_train, y_train)
y_pred = regressor.predict(X_test)
fig, plot = plt.subplots()
print(y_pred)
plot.scatter(X_test, y_test, color ='b')
plot.plot(X_test, y_pred, color ='k')
fig</py-script>
  </body>
</html>

EOF
