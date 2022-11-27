# IIT Hyderabad Thesis template [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is a thesis template for BTech/MTech/MS/PhD degrees at IIT Hyderabad.

## How-To use the thesis template
The IITH thesis template can be used to typeset documents in LaTeX. The documentclass, iiththesis, provided with the template has various options to typeset thesis, synopsis, proposal, report, and techreports as per the institute guidelines.

To use the template, the system must have latex installed. The best way is to install TeX Live.

Steps:
- clone the repository.
- set primary field such as title, author name, roll number, adviser, co-adviser if any, in the `thesis.tex` file.
- set the department and the degree using the documentclass options `department` and `degree` respectively.
  - department= 
    - `cse` for Computer Science and Engineering (default)
    - `ee` for Electrical Engineering
    - `mae` for Mechanical and Aerospace Engineering
    - `che` for Chemical Engineering
    - `cc` for Climate Change
    - `es` for Engineering Science
    - `ce` for Civil Engineering
    - `ai` for Artificial Intelligence
    - `bme` for Biomedical Engineering
    - `bt` for Biotechnology
    - `msme` for Materials Science and Metallurgical Engineering
    - `phy` for Physics
    - `math` for Mathematics
    - `chy` for Chemistry
    - `la` for Liberal Arts
    - `des` for Design
    - `em` for Entrepreneurship and Management
  - degree=
    - `btech` for Bachelor of Technology
    - `bdes` for Bachelor of Design
    - `mtech` for Master of Technology
    - `mdes` for Master of Design
    - `msc` for Master of Science
    - `mdes` for Master in Development Studies
    - `mphil` for Master of Philosophy
    - `phd` for Doctor of Philosophy (default)
  - book=
    - `thesis` for thesis (default)
    - `synopsis` for synopsis
    - `proposal` for research proposal
    - `report` for report
    - `techreport` for tech report
  - spacing=
    - `single`
    - `onehalf` (default)
    - `double`
- the other documentclass options are
  - `lof` for a list of figures 
  - `lot` for a list of tables 
  - `loa` for a list of algorithms 
  - `los` for a list of symbols 
  - `lol` for a list of code listings

- to generate the thesis pdf, run `make`
- to generate the synopsis pdf, run `make synopsis`
- to extract the declaratio page, run `make declaration`
- to extract the approval sheet, run `make approval`
- to generate the final version of the thesis including the signed approval sheet and the declaration page, replace the `declaration.pdf` and `approval.pdf` files with the signed versions and then run `make final`

## Bug Reporting
Please feel free to report any bugs or send pull requests.

## Contributors

* [Utpal Bora](https://utpalbora.com)
* [Saurabh Joshi](https://sbjoshi.github.io)
