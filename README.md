# Deployment model
    AWS User will subscribe to the load-gen offering and gets a cloud formation template for load-gen SaaS to deploy in their own AWS Account
    
    SaaS offering will include below load-gen binaries
        1. WebUI
        2. APIs
        3. Workers (On Demand)
# Infra code 

##  Resources
    1. ebs
        For load-gen GUI
    2. eks
        For workers
    3. mongodb
        Configuration and Test data setup
    4. s3

    5. vpc
        Private/Isolated Network