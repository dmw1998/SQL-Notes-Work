from pyPdf import PdfFileWriter, PdfFileReader
import os
import time
import sys
def part_pdf(input_file, output_file, config_count, f_w, now, file_name):
  file1 = file(input_file, 'rb')
  pdf = PdfFileReader(file1)
  pdf_pages_len = len(pdf.pages)
  if config_count <= pdf_pages_len:
    ye = pdf_pages_len / config_count
    lst_ye = pdf_pages_len % config_count
    part_count = 0
    part_count_ye = 0
    for fen in range(config_count):
      part_count += 1
      if part_count == config_count:
        part_ye = ye + lst_ye
      else:
        part_ye = ye
      write_pdf(pdf, part_count_ye, part_count_ye+part_ye, fen, output_file)
      part_count_ye += ye
  else:
    f_w.writelines('time: '+now+' file name: '+file_name+' status: part_num > pdf pages [error]\n')
    sys.exit(1)
def write_pdf(pdf, part_count_ye, part_count_ye_end, fen, output_file):
  out = PdfFileWriter()
  for pp in range(part_count_ye, part_count_ye_end):
    out.addPage(pdf.getPage(pp))
  ous = file(output_file+'_'+str(fen+1)+'.pdf', 'wb')
  out.write(ous)
  ous.close()
def pdf_main():
  f = open('configure.txt', 'r')
  f_w = open('pp_log.txt', 'a')
  now = time.strftime('%Y-%m-%d %H:%M:%S')
  for i in f:
    i_ = i.strip()
    aa = i_.split('=')[1]
    if i_.find('part_num=') != -1 and aa.isdigit():
      config_count = int(aa)
    else:
      f_w.writelines('time: '+now+' status: part_num in configure.txt is error [error]\n')
      sys.exit(1)
  files = os.listdir('input_dir/')
  for each in files:
    input_file = 'input_dir/'+each
    file_name = input_file[input_file.index('/'):input_file.index('.')]
    output_file = 'output_dir/'+file_name
    part_pdf(input_file, output_file, config_count, f_w, now, file_name)
    f_w.writelines('time: '+now+' file name: '+file_name+' status: success\n')
pdf_main()