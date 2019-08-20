# app-mergeTCK
Merge multiple TCK files from a subject into one TCK file. BIDS format is assumed.
Dependencies: mrtrix3

Created by Sophia Vinci-Booher, 08/20/2019

[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-bl.app.219-blue.svg)](https://doi.org/10.25663/bl.app.219)

# app-example-documentation
This is an example of how to write documentation (readme.md and license.md for Apps on brainlife.io)

Write the following here...

1) What the App does, and how it does it at the basic level.
2) Briefly explain what 1) means for novice users in a language that 1st year psychology student can understand it.
3) Briefly description of input / output files.

### Authors
- Sophia Vinci-Booher (svincibo@indiana.edu)
- Soichi Hayashi (hayashis@iu.edu)

### Project director
- Franco Pestilli (franpest@indiana.edu)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)

## Running the App 

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/bl.app.219](https://doi.org/10.25663/bl.app.219) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
        "tcks": "./track.tck"
}
```

3. Launch the App by executing `main`

```bash
./main
```

### Sample Datasets

If you don't have your own input file, you can download sample datasets from Brainlife.io, or you can use [Brainlife CLI](https://github.com/brain-life/cli).

```
npm install -g brainlife
bl login
mkdir input
bl dataset download  XXXX && mv  XXXX input/track
```

## Output

All output files will be generated under the current working directory (pwd). The main output of this App is a file called `output.mat`. This file contains following object.

```
tck = 

    name: 'temp'
    type: 'faseval'

```

`output_fg.pdb` contains all fasicles with >0 weights withtin fg object (fibers)

#### Product.json

In progress.

### Dependencies

This App only requires [singularity](https://www.sylabs.io/singularity/) to run. If you don't have singularity, you will need to install following dependencies.  

  - Matlab: https://www.mathworks.com/products/matlab.html
  - jsonlab: https://www.mathworks.com/matlabcentral/fileexchange/33381-jsonlab-a-toolbox-to-encode-decode-json-files
  - VISTASOFT: https://github.com/vistalab/vistasoft/
  - MRTRIX3: https://www.mrtrix.org/

