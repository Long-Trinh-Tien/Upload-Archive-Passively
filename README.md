# 🚀 Automated File Upload Script - Streamline Your Backups! 🗄️

Welcome to the **Automated File Upload Script**! This bash script is designed to make your life easier by automating the process of uploading files to a remote repository or server. With built-in error handling, retries, and automatic deletion of successfully uploaded files, this script ensures your backups or uploads are done seamlessly and efficiently.

---

## 📜 Features

🌟 **Automated Upload**: Say goodbye to manual uploads. This script takes care of everything.  
🌟 **Error Handling with Retries**: Failed uploads? No worries. The script will automatically retry until successful.  
🌟 **Efficient Cleanup**: Successfully uploaded files are deleted, freeing up local storage.  
🌟 **Sorted Processing**: Processes files in order, ensuring a smooth and logical upload.  
🌟 **Configurable Path**: Easily customize the directory containing your files.  

---

## 🛠️ How It Works

This script uses the `find` command to locate all files in the specified directory (except the script itself). Each file is uploaded using the specified upload command, and error handling ensures robust operation.

---

## 🔧 Configuration

- **Upload Directory**:  
  Define the directory containing the files to upload by setting the `UPLOAD_DIR` variable at the top of the script.

- **Upload Command**:  
  The script uses the `ia upload` command. Ensure you have this tool installed and configured before running the script.

---

## 🚦 Requirements

To run this script, ensure the following:  
1. **Bash Shell**: Make sure your system supports bash scripts.  
2. **Upload Tool**: Install and configure the `ia` command-line tool.  
3. **Permissions**: Ensure you have read and write access to the target directory.

---

## ✨ Example Usage

1. Place your files in the directory `./SucKhoe/`.  
2. Run the script:  

   ```bash
   ./upload.sh
   ```
Watch your files get uploaded one by one!
