## bone burn address creation script

### burnaddress.py: create a bone burn address

  - Original author: James C. Stroud
  - This program requires [base58](https://pypi.python.org/pypi/base58/0.2.1).

Call the program with a template burn address as the only argument:

    ```
    burnaddress.py boneBurnAddressBurnPremineXXXXXX
    boneBurnAddressBurnPremineXXXZ93EN3
    ```

For instructions, call the program with no arguments::

    ```
    burnaddress.py
    usage: burnaddress.py TEMPLATE
       TEMPLATE - 34 letters & numbers (no zeros)
                  the first two are coin specific
    ```

An example template is accessible using "test" as the argument::

    ```
    burnaddress.py test
    boneBurnAddressBurnPremineXXXZ93EN3
    ```

Validate bitcoin burn addresses at [official bone blockexplorer](https://explorer.bone.com/address/)

