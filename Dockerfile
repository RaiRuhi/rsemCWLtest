FROM CommandLineTool

RUN pip install -r /KS105_Th2_0hr_rep1.star2.Aligned.out.sorted.subset.bam

RUN chmod +x /convert-sam-for-rsem.cwl
ENV PATH /:$PATH
CMD ["convert-sam-for-rsem.cwl"]
