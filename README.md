[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-bl.app.219-blue.svg)](https://doi.org/10.25663/bl.app.219)

# app-mergeTCK
Merge multiple TCK files into one TCK file.

### Author
- Sophia Vinci-Booher (svincibo@indiana.edu)
- Brad Caron (bacaron@utexas.edu)

### Contributor
- Soichi Hayashi (hayashis@iu.edu)

### Project director
- Franco Pestilli (franpest@indiana.edu)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NIH-T32-HD007475](https://img.shields.io/badge/NIH_T32-HD007475-blue.svg)](https://www.nichd.nih.gov/grants-contracts/training-careers/extramural/institutional)

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/bl.app.219](https://doi.org/10.25663/bl.app.219) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
        "tcks": ["./track1.tck", "./track2.tck", "./track3.tck"]
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
bl dataset download 5c0c5d8df6f108004b490ec8 && mv 5c0c5d8df6f108004b490ec8 input/track
bl dataset download 5c0c5e17f6f108004b490ecb && mv 5c0c5e17f6f108004b490ecb input/track
bl dataset download 5c0c5faff6f108004b490ed8 && mv 5c0c5faff6f108004b490ed8 input/track

```

## Output

All output files will be generated under the current working directory (pwd). The main output of this App is a file called `track.tck`. This file contains following object.

```
tck = 

    name: 'track'

```

### Dependencies

This App requires [singularity](https://www.sylabs.io/singularity/) to run. If you don't have singularity, you will need to install following dependencies.  

  - Matlab: https://www.mathworks.com/products/matlab.html
  - jsonlab: https://www.mathworks.com/matlabcentral/fileexchange/33381-jsonlab-a-toolbox-to-encode-decode-json-files
  - VISTASOFT: https://github.com/vistalab/vistasoft/
  - MRTRIX3: https://www.mrtrix.org/

