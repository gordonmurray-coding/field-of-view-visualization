function run_demo()
% RUN_DEMO  FOV Visualization quickstart
% Attempts to call your FOV scripts; otherwise generates a synthetic demo.

close all; clc;
ensure_dir('results');

if exist('scripts/FOV_Trajectories.m','file')
    try
        run('scripts/FOV_Trajectories.m');
        % If your script generates a figure, save it:
        save_all_figs('results','fov_demo');
        disp('Saved figures from FOV_Trajectories.');
        return;
    catch ME
        warning('FOV_Trajectories failed: %s. Falling back to synthetic demo.', ME.message);
    end
end

% Synthetic demo: cone FOV and random trajectories
theta = linspace(-pi/6, pi/6, 100);
R = 100;
x_fov = [0, R*cos(theta), 0];
y_fov = [0, R*sin(theta), 0];

fig = figure;
fill(x_fov, y_fov, [0.9 0.9 0.9], 'EdgeColor','none'); hold on;
for k=1:5
    t = linspace(0,1,200)';
    x = R*t;
    y = 50*(t-0.5) + 10*randn(size(t))*0.1;
    plot(x,y);
end
axis equal; xlabel('X'); ylabel('Y'); title('Synthetic Sensor FOV and Trajectories');
saveas(fig, fullfile('results','fov_example.png'));
disp('Saved synthetic FOV example to results/fov_example.png');
end

function ensure_dir(p); if ~exist(p,'dir'), mkdir(p); end; end
function save_all_figs(outdir, prefix)
    figs = findall(0,'Type','figure');
    for i = 1:numel(figs)
        saveas(figs(i), fullfile(outdir, sprintf('%s_%02d.png', prefix, i)));
    end
end
