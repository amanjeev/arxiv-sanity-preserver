#!/usr/bin/env bash


PYTHONINT=/home/aj/arxiv/env-arxiv-sanity/bin/python
WORKINGDIR=/home/aj/arxiv/arxiv-sanity-preserver

cd $WORKINGDIR

echo "Run fetch_papers.py"

$PYTHONINT  $WORKINGDIR/fetch_papers.py --search-query 'cat:cs.SE+OR+cat:q-bio.GN+OR+cat:cs.CR+OR+cat:cs.DS+OR+cat:cs.DB+OR+cat:cs.CY+OR+cat:cs.DC+OR+cat:cs.MS+OR+cat:cs.ET+OR+cat:cs.NI+OR+cat:cs.LG'


echo "Run download_pdfs.py"

$PYTHONINT  $WORKINGDIR/download_pdfs.py


echo "Run parse_pdf_to_text.py"

$PYTHONINT  $WORKINGDIR/parse_pdf_to_text.py

echo "Run thumb_pdf.py"

$PYTHONINT  $WORKINGDIR/thumb_pdf.py


echo "Run analyze.py"

$PYTHONINT  $WORKINGDIR/analyze.py

echo "Run buildsvm.py"

$PYTHONINT $WORKINGDIR/buildsvm.py


echo "Run make_cache.py"

$PYTHONINT $WORKINGDIR/make_cache.py
