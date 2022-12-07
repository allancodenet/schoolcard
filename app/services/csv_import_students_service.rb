class CsvImportStudentsService
    require 'csv'
  
    def call(file)
      file = File.open(file)
      csv = CSV.parse(file, headers: true, col_sep: ',')
      csv.each do |row|
        student_hash = {}
        student_hash[:other_names] = row['Other Names']
        student_hash[:surname] = row['Surname']
        student_hash[:school_id] = row['school']
        student_hash[:stream_id] = row['stream']
        student_hash[:substream_id] = row['substream']
        student_hash[:gender] = row['gender']
        # student_hash[:studentname] = row['Email Address'].split('@').first if row['Email Address'].present?
        Student.find_or_create_by!(student_hash)
        # binding.b
        # p row
      end
    end
  end