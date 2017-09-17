module Danbooru
  class CustomConfiguration < Configuration
    # Define your custom overloads here

    # The name of this Danbooru.
    def app_name
      if CurrentUser.safe_mode?
        "Safebooru"
      else
        "Homebooru"
      end
    end

    # This is a salt used to make dictionary attacks on account passwords harder.
    def password_salt
      "choujin-steiner"
    end

    # Set the default level, permissions, and other settings for new users here.
    def customize_new_user(user)
      # user.level = User::Levels::MEMBER
      # user.can_approve_posts = false
      # user.can_upload_free = false
      # user.is_super_voter = false
      #
      # user.base_upload_limit = 10
      # user.comment_threshold = -1
      # user.blacklisted_tags = ["spoilers", "guro", "scat", "furry -rating:s"].join("\n")
      # user.default_image_size = "large"
      # user.per_page = 20
      # user.disable_tagged_filenames = false
      true
    end

    # What method to use to backup images.
    #
    # NullBackupService: Don't backup images at all.
    #
    # S3BackupService: Backup to Amazon S3. Must configure aws_access_key_id,
    # aws_secret_access_key, and aws_s3_bucket_name. Bucket must exist and be writable.
    def backup_service
      NullBackupService.new
    end

    def memcached_servers
      %w(memcached:11211)
    end

    # Determines who can see ads.
    def can_see_ads?(user)
      false
    end

    def remote_server_login
      "danbooru"
    end

    # The number of posts displayed per page.
    def posts_per_page
      40
    end

    def is_user_restricted?(user)
      false
    end

    def enable_post_search_counts
      false
    end

    # you should override this
    def email_key
      "zDMSATq0W3hmA5p3rKTgD"
    end

    # Thumbnail size
    def small_image_width
      150
    end

    # Large resize image width. Set to nil to disable.
    def large_image_width
      650
    end

    # Users cannot search for more than X regular tags at a time.
    def base_tag_query_limit
      10
    end

    # enable s3-nginx proxy caching
    def use_s3_proxy?(post)
      false
    end

    # enable some (donmai-specific) optimizations for post counts
    def estimate_post_counts
      false
    end

    # AWS config options
    def aws_access_key_id
    end

    def aws_secret_access_key
    end

    def aws_s3_enabled?
      false
    end

    # Used for backing up images to S3. Must be changed to your own S3 bucket.
    def aws_s3_bucket_name
      "danbooru"
    end

    def aws_sqs_cropper_url
    end

  end
end

