clear all

% Real
x=linspace(-1,1,2005);
% Imag
y=linspace(-1,1,2005);

nlist=[2:0.05:2.3]
for k=1:length(nlist)
k/length(nlist)
    





    for f=1:length(x)
        for j=1:length(y)
            c=x(f)+(i*y(j));
            z=0;
            for p=1:100
                z=z^nlist(k)+c;
            end
            z1(j,f)=z;
%             f/length(x)
            if abs(z1(j,f))>100
                z2(j,f)=1;
            else
                z2(j,f)=0;
            end

        end
    end

%     figure(1)
%     tilelayout(2,2)
%     contourf(y,x,real(z1'),'edgecolor','none')
%     xlabel('imaginary component')
%     ylabel('real component')
%     title('Real part of z_{100}')
    % 
%     figure(2)
%     contourf(y,x,imag(z1'),'edgecolor','none')
%     xlabel('imaginary component')
%     ylabel('real component')
%     title('Imaginary part of z_{100}')
    % 
    % figure(3)
    % contourf(y,x,abs(z1')/max(max(abs(z1'))),'edgecolor','none')
    % xlabel('imaginary component')
    % ylabel('real component')
    % title('Absolute value of z_{100}')

    figure(4)
    contourf(y,x,z2','edgecolor','none')
    xlabel('imaginary component')
    ylabel('real component')
    title('Bound or not')


% % % % %     figure(5)
% % % % %     subplot(2,2,1)
% % % % %     contourf(y,x,real(z1'),'edgecolor','none')
% % % % %     xlabel('imaginary component')
% % % % %     ylabel('real component')
% % % % %     title('Real part of z_{100}')
% % % % %     subplot(2,2,2)
% % % % %     contourf(y,x,imag(z1'),'edgecolor','none')
% % % % %     xlabel('imaginary component')
% % % % %     ylabel('real component')
% % % % %     title('Imaginary part of z_{100}')
% % % % %     subplot(2,2,3)
% % % % %     contourf(y,x,abs(z1'),'edgecolor','none')
% % % % %     xlabel('imaginary component')
% % % % %     ylabel('real component')
% % % % %     title('Absolute value of z_{100}')
% % % % %     subplot(2,2,4)
% % % % %     contourf(y,x,z2','edgecolor','none')
% % % % %     xlabel('imaginary component')
% % % % %     ylabel('real component')
% % % % %     title('Bound or not')
    
    
    F(k)=getframe(figure(4));






end

