require 'csv'

def csvRead data_file
  array_data_with_hash=[]
  CSV.foreach(data_file, headers: true) do |row|
  array_data_with_hash<<row.to_hash
end

def convertHash array_data_with_hash
  result_data=[]
  
end 