# candy-emquest-cbm-sample
Sample application of CBM using CANDY LINE products and EMQuest-VA

## System Requriements

* [EMQuest-VA](https://www.uquest.co.jp/em/va.html)
* [Raspberry Pi](https://www.raspberrypi.org/)
* [CANDY Pi Lite or CANDY Pi Lite+](https://candy-line.com/)
* AC Adapter (5V4A)
* maicroSD (16GB or larger)
* nanoSIM
* [CANDY EGG](https://candy-line.com/)

## Installation

### CANDY RED

1. Import `src/candyred_flow.json` to CANDY RED.
2. Configure CANDY EGG account.

### CANDY EGG

1. Import `src/candyegg_flow.json` to CANDY EGG.
2. Configure a mail server settings.

## Usage

Access to the CANDY EGG dashboard. You can find an FFT chart, a peak frequency gauge, a peak amplitude gauge, machine status, and monitoring settings.

Below is a demonstration video.

* [https://youtu.be/jlBnhG521uQ](https://youtu.be/jlBnhG521uQ)

## Hands-on material

To publish a hands-on materil, run the following commands.

```
cd docs
./publish_html.sh
```

or 

```
cd docs
./publish_pdf.sh
```

To publish a document, docker and [pandoc-eisvogel-ja](https://github.com/nnashiki/pandoc-eisvogel-ja/) are required.
