import os


def parseADBEigenLogs(devicestr):
	pathfile = open(os.path.join(devicestr, "preprocessed", "path-eigen.csv"), "w")
	convfile = open(os.path.join(devicestr, "preprocessed", "conv-eigen.csv"), "w")
	matmulfile = open(os.path.join(devicestr, "preprocessed", "matmul-eigen.csv"), "w")

	pathfile.write("PathTime\n")
	convfile.write("execute_time,in_depth,input_rows,input_cols,filter_rows,filter_cols,stride_rows,stride_cols,pad_rows,pad_cols,out_depth,out_rows,out_cols,\n")
	matmulfile.write("execute_time,a_matrix_height,a_matrix_width,b_matrix_height,b_matrix_width,out_matrix_height,out_matrix_width\n")

	with open(os.path.join(devicestr, "experiment-adb-eigen.log")) as adbEigen:
		for line in adbEigen:
			parts = line.split('|')
			if parts[0] == 'Path':
				pathfile.write(parts[1])
			else:
				if parts[1] == 'Conv':
					s = ""
					for i in range(2, 15):
						s = s + parts[i] + ","
					convfile.write(s + "\n")
				elif parts[1] == 'Matmul':
					aHeight, aWidth = parts[3].split(",")
					bHeight, bWidth = parts[4].split(",")
					outHeight, outWidth = parts[5].split(",")
					matmulfile.write(parts[2] + "," + aHeight + "," + aWidth + "," + bHeight + "," + bWidth + "," + outHeight + "," + outWidth)

	pathfile.close()
	convfile.close()
	matmulfile.close()

def parseADBRSLogs(devicestr):
	pathfile = open(os.path.join(devicestr, "preprocessed", "path-rs.csv"), "w")
	convfile = open(os.path.join(devicestr, "preprocessed", "conv-rs.csv"), "w")
	matmulfile = open(os.path.join(devicestr, "preprocessed", "matmul-rs.csv"), "w")

	pathfile.write("PathTime\n")
	convfile.write("execute_time,in_depth,input_rows,input_cols,filter_rows,filter_cols,stride_rows,stride_cols,pad_rows,pad_cols,out_depth,out_rows,out_cols,\n")
	matmulfile.write("execute_time,a_matrix_height,a_matrix_width,b_matrix_height,b_matrix_width,out_matrix_height,out_matrix_width\n")

	with open(os.path.join(devicestr, "experiment-adb-rs.log")) as adbEigen:
		for line in adbEigen:
			parts = line.split('|')
			if parts[0] == 'Path':
				pathfile.write(parts[1])
			else:
				if parts[1] == 'Conv':
					s = ""
					for i in range(2, 15):
						s = s + parts[i] + ","
					convfile.write(s + "\n")
				elif parts[1] == 'Matmul':
					aHeight, aWidth = parts[3].split(",")
					bHeight, bWidth = parts[4].split(",")
					outHeight, outWidth = parts[5].split(",")
					matmulfile.write(parts[2] + "," + aHeight + "," + aWidth + "," + bHeight + "," + bWidth + "," + outHeight + "," + outWidth)

	pathfile.close()
	convfile.close()
	matmulfile.close()


parseADBEigenLogs("J5")
parseADBEigenLogs("S7")
parseADBRSLogs("J5")
parseADBRSLogs("S7")
