# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Bandwidth
  # ConferenceRecordingMetadata Model.
  class ConferenceRecordingMetadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :conference_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :recording_id

    # Format is ISO-8601
    # @return [String]
    attr_accessor :duration

    # Format is ISO-8601
    # @return [Integer]
    attr_accessor :channels

    # Format is ISO-8601
    # @return [DateTime]
    attr_accessor :start_time

    # Format is ISO-8601
    # @return [DateTime]
    attr_accessor :end_time

    # Format is ISO-8601
    # @return [FileFormatEnum]
    attr_accessor :file_format

    # The current status of the recording. Current possible values are
    # 'processing', 'partial', 'complete', 'deleted', and 'error'. Additional
    # states may be added in the future, so your application must be tolerant of
    # unknown values.
    # @return [String]
    attr_accessor :status

    # The current status of the recording. Current possible values are
    # 'processing', 'partial', 'complete', 'deleted', and 'error'. Additional
    # states may be added in the future, so your application must be tolerant of
    # unknown values.
    # @return [String]
    attr_accessor :media_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'accountId'
      @_hash['conference_id'] = 'conferenceId'
      @_hash['name'] = 'name'
      @_hash['recording_id'] = 'recordingId'
      @_hash['duration'] = 'duration'
      @_hash['channels'] = 'channels'
      @_hash['start_time'] = 'startTime'
      @_hash['end_time'] = 'endTime'
      @_hash['file_format'] = 'fileFormat'
      @_hash['status'] = 'status'
      @_hash['media_url'] = 'mediaUrl'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        account_id
        conference_id
        name
        recording_id
        duration
        channels
        start_time
        end_time
        file_format
        status
        media_url
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(account_id = nil,
                   conference_id = nil,
                   name = nil,
                   recording_id = nil,
                   duration = nil,
                   channels = nil,
                   start_time = nil,
                   end_time = nil,
                   file_format = nil,
                   status = nil,
                   media_url = nil)
      @account_id = account_id unless account_id == SKIP
      @conference_id = conference_id unless conference_id == SKIP
      @name = name unless name == SKIP
      @recording_id = recording_id unless recording_id == SKIP
      @duration = duration unless duration == SKIP
      @channels = channels unless channels == SKIP
      @start_time = start_time unless start_time == SKIP
      @end_time = end_time unless end_time == SKIP
      @file_format = file_format unless file_format == SKIP
      @status = status unless status == SKIP
      @media_url = media_url unless media_url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash.key?('accountId') ? hash['accountId'] : SKIP
      conference_id = hash.key?('conferenceId') ? hash['conferenceId'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      recording_id = hash.key?('recordingId') ? hash['recordingId'] : SKIP
      duration = hash.key?('duration') ? hash['duration'] : SKIP
      channels = hash.key?('channels') ? hash['channels'] : SKIP
      start_time = if hash.key?('startTime')
                     (DateTimeHelper.from_rfc3339(hash['startTime']) if hash['startTime'])
                   else
                     SKIP
                   end
      end_time = if hash.key?('endTime')
                   (DateTimeHelper.from_rfc3339(hash['endTime']) if hash['endTime'])
                 else
                   SKIP
                 end
      file_format = hash.key?('fileFormat') ? hash['fileFormat'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      media_url = hash.key?('mediaUrl') ? hash['mediaUrl'] : SKIP

      # Create object from extracted values.
      ConferenceRecordingMetadata.new(account_id,
                                      conference_id,
                                      name,
                                      recording_id,
                                      duration,
                                      channels,
                                      start_time,
                                      end_time,
                                      file_format,
                                      status,
                                      media_url)
    end

    def to_start_time
      DateTimeHelper.to_rfc3339(start_time)
    end

    def to_end_time
      DateTimeHelper.to_rfc3339(end_time)
    end
  end
end
