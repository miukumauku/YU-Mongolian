# YU-Mongolian (Metafont)

## Files

- Parameter file:  
  - yumongol10.mf  
- Driver file:  
  - yumongol.mf  
- Program files:  
  - yumonpun.mf (Mongolian punctual symbols)
  - yumoninitial.mf (Initial form glyphs)
  - yumonmedial.mf (Medial form glyphs)
  - yumonfinal.mf (Final form glyphs)
  - yumonligature.mf (Ligatures)
- Base file:  
  - yumonbase.mf  
- Encoding file:  
  - yumonenc.mf  

## Make a proof mode print
```
$ mf-nowin "\input yumongol10"  
$ gftodvi yumongol10  
$ dvipdfmx yumongol10  

## Make a sample pdf file
$ mf-nowin "\mode=localfont; input yumongol10"  
$ gftopk yumongol10.600gf  
$ (echo 'yumongol10'; echo '\sample'; echo '\end') | luatex testfont  

