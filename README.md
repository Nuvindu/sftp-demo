# Instructions

## Start the SFTP Listener

1. Navigate to the `listener` directory.
2. Change the configurations.
    * Open the `Config.toml` file.
    * Update the values in the `Config.toml` file to match your SFTP server details.
3. Run the SFTP listener.

    ```ballerina
    bal run
    ```

## Start the SFTP uploader

1. Navigate to the `upload` directory.
2. Change the configurations.
    * Open the `Config.toml` file.
    * Update the values in the `Config.toml` file to match your SFTP server details.
3. Start another command prompt and run the SFTP file uploader.

    ```ballerina
    bal run
    ```
