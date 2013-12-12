int main()
{
	int i;
	for (i=0;i<20;i++)
		printf("\\only<%d>{\\includegraphics[height=0.8\\textheight]{sense%d.png}}\n", i+1, i);
}
