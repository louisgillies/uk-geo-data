#!/usr/bin/env ruby

require ::File.expand_path('../../config/environment',  __FILE__)
require 'csv'

ROOT_DIR = "data"

adjacent_locality = File.open(ROOT_DIR + "/AdjacentLocality.csv")
raise unless adjacent_locality.gets =~ /"NptgLocalityCode","AdjacentNptgLocalityCode","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(adjacent_locality)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << AdjacentLocality.new(:nptg_locality_code => data[0], :adjacent_nptg_locality_code => data[1], :creation_date_time => data[2].nil? ? nil : Time.parse(data[2]), :modification_date_time => data[3].nil? ? nil : Time.parse(data[3]), :revision_number => data[4], :modification => data[5])
end

AdjacentLocality.import(rec)

adjacent_locality.close

##########

puts "Importing administrative areas"
admin_areas = File.open(ROOT_DIR + "/AdminAreas.csv")
raise unless admin_areas.gets =~ /"AdministrativeAreaCode","AtcoAreaCode","AreaName","AreaNameLang","ShortName","ShortNameLang","Country","RegionCode","MaximumLengthForShortNames ","National","ContactEmail","ContactTelephone","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(admin_areas)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << AdminArea.new(:administrative_area_code => data[0], :atco_area_code => data[1], :area_name => data[2], :area_name_lang => data[3], :short_name => data[4], :short_name_lang => data[5], :country => data[6], :region_code => data[7], :maximum_length_for_short_names => data[8], :national => data[9], :contact_email => data[10], :contact_telephone => data[11], :creation_date_time => Time.parse(data[12]), :modification_date_time => Time.parse(data[13]), :revision_number => data[14], :modification => data[15])
end

AdminArea.import(rec)

admin_areas.close

##########

puts "Importing districts"
districts = File.open(ROOT_DIR + "/Districts.csv")
raise unless districts.gets =~ /"DistrictCode","DistrictName","DistrictLang","AdministrativeAreaCode","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(districts)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << District.new(:district_code => data[0], :district_name => data[1], :district_lang => data[2], :administrative_area_code => data[3], :creation_date_time => Time.parse(data[4]), :modification_date_time => Time.parse(data[5]))
end

District.import(rec)

districts.close

##########

puts "Importing localities"
localities = File.open(ROOT_DIR + "/Localities.csv")
raise unless localities.gets =~ /"NptgLocalityCode","LocalityName","LocalityNameLang","ShortName","ShortNameLang","QualifierName","QualifierNameLang","QualifierLocalityRef","QualifierDistrictRef","AdministrativeAreaCode","NptgDistrictCode","SourceLocalityType","GridType","Easting","Northing","CreationDateTime","ModificationDateTime","RevisionNumber","Modification",""/

rec = Array.new

parser = CSV.new(localities)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << Locality.new(:nptg_locality_code => data[0], :locality_name => data[1], :locality_name_lang => data[2], :short_name => data[3], :short_name_lang => data[4], :qualifier_name => data[5], :qualifier_name_lang => data[6], :qualifier_locality_ref => data[7], :qualifier_district_ref => data[8], :administrative_area_code => data[9], :nptg_district_code => data[10], :source_locality_type => data[11], :grid_type => data[12], :easting => data[13], :northing => data[14], :creation_date_time => Time.parse(data[15]), :modification_date_time => Time.parse(data[16]), :revision_number => data[17], :modification => data[18])
end

Locality.import(rec)

localities.close

##########

puts "Importing locality alternative names"
locality_alternative_names = File.open(ROOT_DIR + "/LocalityAlternativeNames.csv")
raise unless locality_alternative_names.gets =~ /"NptgLocalityCode","OldNptgLocalityCode","LocalityName","LocalityNameLang","ShortName","ShortNameLang","QualifierName","QualifierNameLang","QualifierLocalityRef","QualifierDistrictRef","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(locality_alternative_names)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << LocalityAlternativeName.new(:nptg_locality_code => data[0], :old_nptg_locality_code => data[1], :locality_name => data[2], :locality_name_lang => data[3], :short_name => data[4], :short_name_lang => data[5], :qualifier_name => data[6], :qualifier_name_lang => data[7], :qualifier_locality_ref => data[8], :qualifier_district_ref => data[9], :creation_date_time => Time.parse(data[10]), :modification_date_time => Time.parse(data[11]), :revision_number => data[12], :modification => data[13])
end

LocalityAlternativeName.import(rec)

locality_alternative_names.close

##########

puts "Importing locality hierarchy"
locality_hierarchy = File.open(ROOT_DIR + "/LocalityHierarchy.csv")
raise unless locality_hierarchy.gets =~ /"ParentNptgLocalityCode","ChildNptgLocalityCode","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(locality_hierarchy)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << LocalityHierarchy.new(:parent_nptg_locality_code => data[0], :child_nptg_locality_code => data[1], :creation_date_time => Time.parse(data[2]), :modification_date_time => Time.parse(data[3]), :revision_number => data[4], :modification => data[5])
end

LocalityHierarchy.import(rec)

locality_hierarchy.close

##########

puts "Importing Plusbus mapping"
plusbus_mapping = File.open(ROOT_DIR + "/PlusbusMapping.csv")
raise unless plusbus_mapping.gets =~ /"PlusbusZoneCode","Sequence","GridType","Easting","Northing","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(plusbus_mapping)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << PlusbusMapping.new(:plusbus_zone_code => data[0], :sequence => data[1], :grid_type => data[2], :easting => data[3], :northing => data[4], :creation_date_time => Time.parse(data[5]), :modification_date_time => Time.parse(data[6]), :revision_number => data[7], :modification => data[8])
end

PlusbusMapping.import(rec)
plusbus_mapping.close

##########

puts "Importing Plusbus zones"
plusbus_zones = File.open(ROOT_DIR + "/PlusbusZones.csv")
raise unless plusbus_zones.gets =~ /"PlusbusZoneCode","Name","NameLang","Country","CreationDateTime","ModificationDateTime","RevisionNumber","Modification"/

rec = Array.new

parser = CSV.new(plusbus_zones)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << PlusbusZone.new(:plusbus_zone_code => data[0], :name => data[1], :name_lang => data[2], :country => data[3], :creation_date_time => Time.parse(data[4]), :modification_date_time => Time.parse(data[5]), :revision_number => data[6], :modification => data[7])
end

PlusbusZone.import(rec)

plusbus_zones.close

##########

puts "Importing regions"
regions = File.open(ROOT_DIR + "/Regions.csv")
raise unless regions.gets =~ /"RegionCode","RegionName","RegionNameLang","CreationDateTime","RevisionNumber","ModificationDateTime","Modification"/

rec = Array.new

parser = CSV.new(regions)
parser.convert { |f| f.blank? ? nil : f }
parser.readlines.each do |data|
  rec << Region.new(:region_code => data[0], :region_name => data[1], :region_name_lang => data[2], :creation_date_time => Date.parse(data[3]), :revision_number => data[4], :modification_date_time => Time.parse(data[5]), :modification => data[6])
end

Region.import(rec)
regions.close

