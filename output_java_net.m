function net = output_java_net( sz, wts, bs )
    net = '';
    
    line = 'import java.util.ArrayList;';
    net = strcat(net,line,'\n');
    
    line = 'public class PolicyNet {';
    net = strcat(net,line,'\n');
    
    line = 'ArrayList<Matrix> weights = new ArrayList<Matrix>();';
    net = strcat(net,'\t',line,'\n');
    
    line = 'ArrayList<Matrix> biases = new ArrayList<Matrix>();';
    net = strcat(net,'\t',line,'\n');
    
    line = 'Matrix weight_layer;';
    net = strcat(net,'\t',line,'\n');
    
    line = 'Matrix bias_layer;';
    net = strcat(net,'\t',line,'\n');
    
    line = 'public PolicyNet(){';
    net = strcat(net,'\t',line,'\n');
    
    for i = 1:size(sz,1)-1
        line = 'weight_layer = new Matrix(new Double[][]{';
        for j = 1:sz(i)
            line = strcat(line,'{');
            for k = 1:sz(i+1)
                if (wts{i}(k,j) == 0)
                    line = strcat(line,num2str(wts{i}(k,j)),'.0,');
                else
                    line = strcat(line,num2str(wts{i}(k,j)),',');
                end
            end
            line = strcat(line(1:end-1),'},');
        end
        net = strcat(net,'\t\t',line(1:end-1),'});','\n');

        line = 'weights.add(weight_layer);';
        net = strcat(net,'\t\t',line,'\n');
    end
    
    for i = 1:size(sz,1)-1
        line = 'bias_layer = new Matrix(new Double[]{';
        for j = 1:sz(i+1)
            if (bs{i}(j) == 0)
                line = strcat(line,num2str(bs{i}(j)),'.0,');
            else
                line = strcat(line,num2str(bs{i}(j)),',');
            end
        end
        net = strcat(net,'\t\t',line(1:end-1),'});','\n');

        line = 'biases.add(bias_layer);';
        net = strcat(net,'\t\t',line,'\n');
    end
    
    line = '}';
    net = strcat(net,'\t',line,'\n');
    
    applyfunc = 'public Double getValue(Board b, boolean bottomLeftStarter){\n		return (apply(b,bottomLeftStarter) - apply(b,!bottomLeftStarter));\n	}\n	private Double apply(Board b, boolean bottomLeftStarter){\n		ArrayList<Double> flatInput = new ArrayList<Double>();\n		if (bottomLeftStarter){\n			for (int y = b.getBoardSize()-1; y >= 0; y--){\n				for (int x = 0; x < b.getBoardSize(); x++){\n					Double cell = Double.parseDouble((b.getFromCoordinate(x,y) == null ? "0.0" : b.getFromCoordinate(x,y)));\n					flatInput.add(cell);\n				}\n			}\n		}else{\n			for (int y = 0; y < b.getBoardSize(); y++){\n				for (int x = b.getBoardSize()-1; x >= 0; x--){\n					Double cell = Double.parseDouble((b.getFromCoordinate(x,y) == null ? "0.0" : b.getFromCoordinate(x,y)));\n					if (cell.equals(1.0)){\n						cell = 2.0;\n					}else if (cell.equals(2.0)){\n						cell = 1.0;\n					}\n					flatInput.add(cell);\n				}\n			}\n		}\n		return apply(flatInput.toArray(new Double[flatInput.size()]));\n	}\n	private Double apply(Double[] input){\n		Matrix y = new Matrix(input);\n		for (int i = 0; i < weights.size(); i++){\n			if (i == weights.size()-1){\n				y = weights.get(i).transpose().times(y);\n				y = y.addCoefficient(biases.get(i).valueAt(0,0));\n			}else{\n				y = weights.get(i).transpose().times(y);\n				y = biases.get(i).plus(y);\n				y = y.multiplyCoefficient(-2.0);\n				y = y.exp();\n				y = y.addCoefficient(1.0);\n				y = y.coefficientOver(2.0);\n				y = y.addCoefficient(-1.0);\n			}\n		}\n		return y.valueAt(0,0);\n	}';
    net = strcat(net,'\t',applyfunc,'\n');
    
    line = '}';
    net = strcat(net,line,'\n');
    
    fid = fopen('PolicyNet.java','wt');
    fprintf(fid, net);
    fclose(fid);
end

