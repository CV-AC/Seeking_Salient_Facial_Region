function C = TransferISLSR(Ls,Xs,Xt,num,fdim,lambda,channel_num)

Lnew = [Ls,zeros(size(Ls,1),1)];
delta_Xst = mean(Xs,2) - mean(Xt,2); % mean(Xs,1) �е�ƽ�� % mean(Xs,2) �е�ƽ��
Xnew = [Xs,sqrt(lambda)*delta_Xst];
d = size(Xs,1); % size(Xs,1) �е���Ŀ size(Xs,2) �е���Ŀ
c = size(Ls,1);
C = ones(d,c);
C = ALM_ISLSR_fixednum(Lnew,Xnew,C,num,fdim,channel_num);