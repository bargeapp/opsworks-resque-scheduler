# opsworks-resque-scheduler cookbook

This is a very simple cookbook to deploy resque scheduler on a simple instance at Amazon OpsWorks

# Requirements

# Usage

In your custom layer, you must add this recipes to each stage

**Setup**

opsworks-resque-scheduler::setup

**Deploy**

opsworks-resque-scheduler::restart

**Shutdown**

opsworks-resque-scheduler::stop

# Recipes

**opsworks-resque-scheduler::setup** - initial setup
**opsworks-resque-scheduler::restart** - restart the workers (after deploy)
**opsworks-resque-scheduler::stop** - stop the workers (shutdown)

# Author

Author:: Pedro Axelrud (<pedroaxl@gmail.com>)
