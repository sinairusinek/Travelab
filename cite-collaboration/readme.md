# Petachia's journey to CITE-land

## source

Both text files originated in a [Google books scan](https://books.google.co.il/books?id=M_EoAAAAYAAJ&dq=petachia+of+regensburg&source=gbs_navlinks_s) of the London edition, published by Messrs. Trubner & Company, 1856. This edition is bi-lingual, with facing pages in Hebrew and in the English translation, by A. Benisch.
It was OCR'd and corrected using Transkribus.


## processing
| file | actions |
| --- | --- |
| correcting quotation|  |
| English: merging end of line hyphenations |  |
| splitting to sentences/clauses |  (using regex in BB-EDIT) in the Hebrew, the colon was used to express end of paragraph-like sentences and the dot was used to separate short sentences or clauses (similar to the way we use comma or semi-colons). I chose to segment to the smaller units which are still syntactically independent|
| tokenization | (using Open Refine, preserving punctuation as well as (for now) page number) |


## Questions
* Hebrew placename segmentation: the problems of prefixes
In order to cite a toponym, a string like ומתורגמה will have to be further segmented to: ו (which means "and"), מ (which means "from") and תוגרמה which is the toponym for the Ottoman area. Can we/should we segment only these strings?
* should the English and Hebrew versions have the same citation schema to begin with?




