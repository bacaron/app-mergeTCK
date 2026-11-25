<h1 align="center">mergeTCK</h1>

<p align="center">
  Merges multiple tractograms into one .tck file with MRtrix3 tckedit.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.608"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.608-blue.svg" alt="Run on brainlife.io"></a>
</p>

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Merges multiple tractograms into one .tck file with MRtrix3 tckedit.**

Concatenates the streamlines of all input .tck tractograms (multi input) into track/track.tck using MRtrix3 tckedit. Use it to combine tractograms generated separately (for example with different algorithms or parameters) for the same subject. All tractograms should be in the same space.

| | |
|---|---|
| **Inputs** | `neuro/track/tck` |
| **Outputs** | `neuro/track/tck` |
| **Container** | `brainlife/mrtrix3:3.0_RC3` |
| **Resources** | 4 CPUs |
| **Run it** | [doi.org/10.25663/brainlife.app.608](https://doi.org/10.25663/brainlife.app.608) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `track` | `neuro/track/tck` | yes | Tractograms (.tck) to merge; several datasets can be selected. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `track` | `neuro/track/tck` | Single .tck tractogram containing the streamlines of all inputs. |

<!-- brainlife-app:end -->

## Versions on brainlife.io

This repository hosts several Apps, each built from its own branch.

| App | Branch | Run it | Status |
|---|---|---|---|
| Merge Tractography (tcks) together with MRTrix3 | [`gttwo-tck`](https://github.com/bacaron/app-mergeTCK/tree/gttwo-tck) | [doi:10.25663/brainlife.app.608](https://doi.org/10.25663/brainlife.app.608) | current |
| Merge Tractography (tcks) together with MRTrix3 (Two Tcks) | [`two-tck`](https://github.com/bacaron/app-mergeTCK/tree/two-tck) | [doi:10.25663/brainlife.app.305](https://doi.org/10.25663/brainlife.app.305) | available |

## Running the App

### On brainlife.io

Open the App at [doi.org/10.25663/brainlife.app.608](https://doi.org/10.25663/brainlife.app.608), choose `neuro/track/tck` from your project and press **Execute**. The results are saved to your project as `neuro/track/tck`.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) (the App runs in `brainlife/mrtrix3:3.0_RC3`), [`jq`](https://jqlang.github.io/jq/).

1. Clone this repository and check out the App's branch (`git checkout gttwo-tck`).
2. Create `config.json` with the paths to your inputs and the parameters:

   ```json
   {
       "track": "/path/to/track/track"
   }
   ```

3. Run `./main`.

## Troubleshooting

- **failed**: Check that the inputs are valid .tck files.

## Sample Datasets

If you don't have your own input file, you can download sample datasets from Brainlife.io, or you can use [Brainlife CLI](https://github.com/brainlife/cli).

```
npm install -g brainlife
bl login
mkdir input
bl dataset download 5c0c5d8df6f108004b490ec8 && mv 5c0c5d8df6f108004b490ec8 input/track
bl dataset download 5c0c5e17f6f108004b490ecb && mv 5c0c5e17f6f108004b490ecb input/track
bl dataset download 5c0c5faff6f108004b490ed8 && mv 5c0c5faff6f108004b490ed8 input/track

```

## Citing

If you use this App, please cite it, the software it builds on and brainlife.io:

- Merge Tractography (tcks) together with MRTrix3. brainlife.io App. [doi:10.25663/brainlife.app.608](https://doi.org/10.25663/brainlife.app.608)
- Tournier et al. MRtrix3: A fast, flexible and open software framework for medical image processing and visualisation. *NeuroImage* 202:116137 (2019). [doi:10.1016/j.neuroimage.2019.116137](https://doi.org/10.1016/j.neuroimage.2019.116137)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Sophia Vinci-Booher
- Brad Caron

**Contributor**

- Soichi Hayashi

**Project director**

- Franco Pestilli

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io, which runs this App, is publicly funded by Wellcome, the U.S. National Institutes of Health and the U.S. National Science Foundation; acknowledging that support helps keep it running.</sub>
