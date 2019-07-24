# Tenzo

> [Tenzo](https://www.gotenzo.com/) is a management platform that gives hospitality and retail businesses actionable insights from their real time data.

I was approached by Tenzo through [hackajob](https://app.hackajob.co/) with a technical test for their **Junior Full Stack Developer** role.

## To use

Clone this repo  
> `git clone https://github.com/fo0s/TechTests.git`

Navigate into the Tenzo directory  
> `cd TechTests/Tenzo`

**Optional but recommended**  
Create a anaconda virtual development enviornment
> `conda create -n tenzo_env python=3.6`  

> `conda activate tenzo_env`

Install dependencies  
> `python3 -m pip install --user --requirement requirements.txt`  

Run pytest to make sure everything is working
> `pytest`

If all goes well you'll see something similar to this;

>================================= test session starts =================================  
>  
>collected 16 items 
>  
>  
>tests/pay/test_payrate_basic.py....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ 25%]  
>tests/shifts/test_shift_basics.py ........&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ 75%]  
>tests/shifts/test_shift_together.py ....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[100%]  
>
>============================== 16 passed in 0.81 seconds==============================

## Requirements

The original requirements readme can be found [here](Instructions/readme.txt)

A python3 program that loads in a .csv file, cleans and sorts the entry points;

### Labour data  
> A shift will include the pay-rate (per hour), the start and end time, and a text field where the manager will enter break info.  

This will in turn with specific requirements and return data as needed.

### Sales Data  
> We are hoping that you can compute different metrics for the different hours,
such as the total sales during this hour, the cost of labour for this hour, and
the cost of labour as percentage of sales.

> e.g.,

> | Hour | Sales | Labour | % |
> |:---: | :---: | :---: | :--- |
>| 7:00 |	100 | 30 | 30% |
> |8:00 |	300 | 60 | 20% |

## TDD/BDD

Testing is done using [radish-bdd](http://radish-bdd.io/#gettingstarted).

---------SCREEN SHOTS OF RESULTS--------

## Results

**TODO**  
-- Result documentation  
-- Maybe screenshot  
-- Working methods
