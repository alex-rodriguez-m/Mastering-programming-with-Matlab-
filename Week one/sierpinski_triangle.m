
function sierpinski_triangle(it)
    % Error detection
    if(nargin < 1), error('Please, specify the number of iterations.'); end
    if(it < 0), error('The number of iterations must be greater or equal than 0'); end
    
    % Useful Parameters
    L = 10; side = L;
    it = it - 1;
    % Support initialization
    sop_x = [0 L/2 L];
    sop_y = [0 sqrt(3*(L^2)/4) 0];
    fill(sop_x, sop_y, 'k'); hold on; axis square; ylim([0 10]);
    title(['Sierpinski Triangle for ' num2str(it+1) ' iterations']);
    clear('sop_x','sop_y');
    
    % Iteration >0
    if(it > -1)
        side = side/2;
        it0_x = [side/2 side 3*side/2];
        it0_y = [sqrt(3*(side^2)/4) 0 sqrt(3*(side^2)/4)];
        fill(it0_x, it0_y, 'w'); hold on;
        % Initialization of cells that will contain the triangles coordinates
        coor{1,1} = it0_x; 
        coor{2,1} = it0_y; 
        % Next iterations
        for i = 1:1:it
            temp = {};
            side = side/2;
            for n = 1:1:size(coor,2)
                h = sqrt(3*(side^2)/4);
                % Relative right triangle
                x_r = [coor{1,n}(2)+side/2 coor{1,n}(2)+side coor{1,n}(2)+3*side/2];
                y_r = [coor{2,n}(2)+h coor{2,n}(2) coor{2,n}(2)+h];
                fill(x_r, y_r, 'w'); hold on;
                % Relative above triangle
                x_u = [coor{1,n}(1)+side/2 coor{1,n}(1)+side coor{1,n}(1)+3*side/2];
                y_u = [coor{2,n}(1)+h coor{2,n}(1) coor{2,n}(1)+h];
                fill(x_u, y_u, 'w'); hold on;
                % Relative left triangle
                x_l = [coor{1,n}(2)-3*side/2 coor{1,n}(2)-side coor{1,n}(2)-side/2];
                y_l = [coor{2,n}(2)+h coor{2,n}(2) coor{2,n}(2)+h];
                fill(x_l, y_l, 'w'); hold on;
                % New triangles coordinates storage
                l = size(temp,2);
                temp{1,l+1} = x_r; temp{2,l+1} = y_r;
                temp{1,l+2} = x_u; temp{2,l+2} = y_u;
                temp{1,l+3} = x_l; temp{2,l+3} = y_l;
            end
            % Cleaning up temporal cells
            coor = temp;
            clear('temp');
        end
        hold off; 
    end
    
    axis off;
end
