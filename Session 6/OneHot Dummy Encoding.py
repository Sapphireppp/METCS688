#!/usr/bin/env python
# coding: utf-8

# In[15]:


#------- One hot coding ---------
from numpy import array
from numpy import argmax
from sklearn.preprocessing import LabelEncoder
from sklearn.preprocessing import OneHotEncoder
# define example
sampledata = ['chicken', 'chicken', 'cat', 'chicken', 'dog', 'dog', 'horse', 'chicken', 'dog', 'horse']
values = array(sampledata)
print(values)

# binary encode
onehot_encoder = OneHotEncoder(sparse = False)
integer_encoded = integer_encoded.reshape(len(integer_encoded), 1)
onehot_encoded = onehot_encoder.fit_transform(integer_encoded)
print("one-hot encoded:")
print(onehot_encoded)

#------ Dummy coding -------------
import pandas as pd

df = pd.DataFrame(data=sampledata, columns=['dummy'])
dummies = pd.get_dummies(df['dummy'])
print("dummies:")
print(dummies)

#------- 


# In[ ]:





# In[ ]:




